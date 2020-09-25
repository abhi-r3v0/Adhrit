.class public final Lo/setStartedAt;
.super Lo/getOs;
.source ""


# instance fields
.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/writeRawMessageSetExtension;)V
    .locals 1

    .line 30
    sget-object v0, Lo/isCrashed$onNavigationEvent;->NOT_IN:Lo/isCrashed$onNavigationEvent;

    invoke-direct {p0, p1, v0, p2}, Lo/getOs;-><init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/isCrashed$onNavigationEvent;Lo/writeRawMessageSetExtension;)V

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/setStartedAt;->keys:Ljava/util/List;

    .line 32
    sget-object v0, Lo/isCrashed$onNavigationEvent;->NOT_IN:Lo/isCrashed$onNavigationEvent;

    invoke-static {v0, p2}, Lo/setEndedAt;->extractDocumentKeysFromArrayValue(Lo/isCrashed$onNavigationEvent;Lo/writeRawMessageSetExtension;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final matches(Lo/setDiskUsed;)Z
    .locals 1

    .line 37
    iget-object v0, p0, Lo/setStartedAt;->keys:Ljava/util/List;

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
