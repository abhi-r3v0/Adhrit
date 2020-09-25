.class final Lo/VpaAccounts;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Status;


# static fields
.field public static final extraCallback:Lo/VpaAccounts;


# instance fields
.field private final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SimResponseJsonAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lo/VpaAccounts;

    invoke-direct {v0}, Lo/VpaAccounts;-><init>()V

    sput-object v0, Lo/VpaAccounts;->extraCallback:Lo/VpaAccounts;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/VpaAccounts;->onMessageChannelReady:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lo/SimResponseJsonAdapter;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/VpaAccounts;->onMessageChannelReady:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ICustomTabsCallback(I)J
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 54
    :goto_0
    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final onMessageChannelReady(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lo/SimResponseJsonAdapter;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 60
    iget-object p1, p0, Lo/VpaAccounts;->onMessageChannelReady:Ljava/util/List;

    return-object p1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(J)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
