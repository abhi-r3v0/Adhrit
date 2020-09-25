.class final Lo/BreadcrumbSource;
.super Lo/UnavailableAnalyticsEventLogger;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo/UnavailableAnalyticsEventLogger<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient extraCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private transient onNavigationEvent:I


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lo/UnavailableAnalyticsEventLogger;-><init>()V

    if-eqz p1, :cond_0

    .line 44
    iput-object p1, p0, Lo/BreadcrumbSource;->extraCallback:Ljava/lang/Object;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1890
    throw p1
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lo/UnavailableAnalyticsEventLogger;-><init>()V

    .line 49
    iput-object p1, p0, Lo/BreadcrumbSource;->extraCallback:Ljava/lang/Object;

    .line 50
    iput p2, p0, Lo/BreadcrumbSource;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method final asBinder()Lo/BreadcrumbHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/BreadcrumbHandler<",
            "TE;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lo/BreadcrumbSource;->extraCallback:Ljava/lang/Object;

    invoke-static {v0}, Lo/BreadcrumbHandler;->onMessageChannelReady(Ljava/lang/Object;)Lo/BreadcrumbHandler;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 60
    iget-object v0, p0, Lo/BreadcrumbSource;->extraCallback:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final extraCallback([Ljava/lang/Object;I)I
    .locals 1

    .line 80
    iget-object p2, p0, Lo/BreadcrumbSource;->extraCallback:Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 87
    iget v0, p0, Lo/BreadcrumbSource;->onNavigationEvent:I

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lo/BreadcrumbSource;->extraCallback:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lo/BreadcrumbSource;->onNavigationEvent:I

    :cond_0
    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    .line 2065
    iget-object v0, p0, Lo/BreadcrumbSource;->extraCallback:Ljava/lang/Object;

    .line 3056
    new-instance v1, Lo/registerBreadcrumbHandler$4;

    invoke-direct {v1, v0}, Lo/registerBreadcrumbHandler$4;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final onMessageChannelReady()Lo/DisabledBreadcrumbSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/DisabledBreadcrumbSource<",
            "TE;>;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lo/BreadcrumbSource;->extraCallback:Ljava/lang/Object;

    .line 2056
    new-instance v1, Lo/registerBreadcrumbHandler$4;

    invoke-direct {v1, v0}, Lo/registerBreadcrumbHandler$4;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method final onRelationshipValidationResult()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final onTransact()Z
    .locals 1

    .line 96
    iget v0, p0, Lo/BreadcrumbSource;->onNavigationEvent:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/BreadcrumbSource;->extraCallback:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
