.class final Lo/toMessage;
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
.field private static final onPostMessage:Lo/isFiltered;


# instance fields
.field private final ICustomTabsCallback:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json; charset=UTF-8"

    .line 27
    invoke-static {v0}, Lo/isFiltered;->ICustomTabsCallback(Ljava/lang/String;)Lo/isFiltered;

    move-result-object v0

    sput-object v0, Lo/toMessage;->onPostMessage:Lo/isFiltered;

    return-void
.end method

.method constructor <init>(Lo/JniNativeApi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/JniNativeApi<",
            "TT;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lo/toMessage;->ICustomTabsCallback:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1036
    new-instance v0, Lo/updatePriority;

    invoke-direct {v0}, Lo/updatePriority;-><init>()V

    .line 1037
    invoke-static {v0}, Lo/deviceFile;->onMessageChannelReady(Lo/filtersNodes;)Lo/deviceFile;

    move-result-object v1

    .line 1038
    iget-object v2, p0, Lo/toMessage;->ICustomTabsCallback:Lo/JniNativeApi;

    invoke-virtual {v2, v1, p1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1039
    sget-object p1, Lo/toMessage;->onPostMessage:Lo/isFiltered;

    .line 1548
    new-instance v1, Lo/matches;

    invoke-virtual {v0}, Lo/updatePriority;->mayLaunchUrl()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lo/matches;-><init>([B)V

    .line 1039
    invoke-static {p1, v1}, Lo/isCompleteForPath;->ICustomTabsCallback(Lo/isFiltered;Lo/matches;)Lo/isCompleteForPath;

    move-result-object p1

    return-object p1
.end method
