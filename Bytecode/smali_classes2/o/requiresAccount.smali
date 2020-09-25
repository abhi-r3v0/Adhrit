.class final Lo/requiresAccount;
.super Lo/zzl;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/zzl;"
    }
.end annotation


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/getRemoteService;


# direct methods
.method private constructor <init>(Lo/getRemoteService;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lo/requiresAccount;->ICustomTabsCallback:Lo/getRemoteService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/zzl;-><init>(Lo/getRemoteService;Lo/requiresSignIn;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/getRemoteService;Lo/requiresSignIn;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lo/requiresAccount;-><init>(Lo/getRemoteService;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lo/checkConnected;

    iget-object v1, p0, Lo/requiresAccount;->ICustomTabsCallback:Lo/getRemoteService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/checkConnected;-><init>(Lo/getRemoteService;Lo/requiresSignIn;)V

    return-object v0
.end method
