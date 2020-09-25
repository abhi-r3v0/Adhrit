.class public final Lo/shouldIncludeSetter;
.super Lo/isCompleteForPath;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/shouldIncludeSetter$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final extraCallback:Lo/isFiltered;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/x-www-form-urlencoded"

    .line 31
    invoke-static {v0}, Lo/isFiltered;->extraCallback(Ljava/lang/String;)Lo/isFiltered;

    move-result-object v0

    sput-object v0, Lo/shouldIncludeSetter;->extraCallback:Lo/isFiltered;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lo/isCompleteForPath;-><init>()V

    .line 37
    invoke-static {p1}, Lo/generateEventsForType;->onMessageChannelReady(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/shouldIncludeSetter;->onNavigationEvent:Ljava/util/List;

    .line 38
    invoke-static {p2}, Lo/generateEventsForType;->onMessageChannelReady(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/shouldIncludeSetter;->ICustomTabsCallback:Ljava/util/List;

    return-void
.end method

.method private onNavigationEvent(Lo/filtersNodes;Z)J
    .locals 5

    if-eqz p2, :cond_0

    .line 85
    new-instance p1, Lo/updatePriority;

    invoke-direct {p1}, Lo/updatePriority;-><init>()V

    goto :goto_0

    .line 87
    :cond_0
    invoke-interface {p1}, Lo/filtersNodes;->extraCallback()Lo/updatePriority;

    move-result-object p1

    .line 90
    :goto_0
    iget-object v0, p0, Lo/shouldIncludeSetter;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    if-lez v2, :cond_1

    const/16 v3, 0x26

    .line 91
    invoke-virtual {p1, v3}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    .line 92
    :cond_1
    iget-object v3, p0, Lo/shouldIncludeSetter;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1961
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v1, v4}, Lo/updatePriority;->onPostMessage(Ljava/lang/String;II)Lo/updatePriority;

    const/16 v3, 0x3d

    .line 93
    invoke-virtual {p1, v3}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    .line 94
    iget-object v3, p0, Lo/shouldIncludeSetter;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2961
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v1, v4}, Lo/updatePriority;->onPostMessage(Ljava/lang/String;II)Lo/updatePriority;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 3067
    iget-wide v0, p1, Lo/updatePriority;->ICustomTabsCallback:J

    .line 3930
    :try_start_0
    iget-wide v2, p1, Lo/updatePriority;->ICustomTabsCallback:J

    invoke-virtual {p1, v2, v3}, Lo/updatePriority;->asInterface(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3932
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :cond_3
    const-wide/16 v0, 0x0

    :goto_2
    return-wide v0
.end method


# virtual methods
.method public final extraCallback()J
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 67
    invoke-direct {p0, v0, v1}, Lo/shouldIncludeSetter;->onNavigationEvent(Lo/filtersNodes;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final onMessageChannelReady(Lo/filtersNodes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lo/shouldIncludeSetter;->onNavigationEvent(Lo/filtersNodes;Z)J

    return-void
.end method

.method public final onPostMessage()Lo/isFiltered;
    .locals 1

    .line 63
    sget-object v0, Lo/shouldIncludeSetter;->extraCallback:Lo/isFiltered;

    return-object v0
.end method
