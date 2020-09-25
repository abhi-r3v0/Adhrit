.class public final Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_KEY_SET:Lo/CrashlyticsReportWithSessionId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_FIELD_NAME:Ljava/lang/String; = "__name__"


# instance fields
.field private final path:Lo/setJailbroken;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    invoke-static {}, Lo/isJailbroken;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->COMPARATOR:Ljava/util/Comparator;

    .line 32
    new-instance v0, Lo/CrashlyticsReportWithSessionId;

    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lo/CrashlyticsReportWithSessionId;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    sput-object v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->EMPTY_KEY_SET:Lo/CrashlyticsReportWithSessionId;

    return-void
.end method

.method private constructor <init>(Lo/setJailbroken;)V
    .locals 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->isDocumentKey(Lo/setJailbroken;)Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Not a document key path: %s"

    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->path:Lo/setJailbroken;

    return-void
.end method

.method public static comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation

    .line 37
    sget-object v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method public static empty()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;
    .locals 1

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->fromSegments(Ljava/util/List;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static emptyKeySet()Lo/CrashlyticsReportWithSessionId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation

    .line 42
    sget-object v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->EMPTY_KEY_SET:Lo/CrashlyticsReportWithSessionId;

    return-object v0
.end method

.method public static fromName(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;
    .locals 5

    .line 52
    invoke-static {p0}, Lo/setJailbroken;->fromString(Ljava/lang/String;)Lo/setJailbroken;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Lo/setRamUsed;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    .line 55
    invoke-virtual {p0, v3}, Lo/setRamUsed;->getSegment(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "projects"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 56
    invoke-virtual {p0, v0}, Lo/setRamUsed;->getSegment(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "databases"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0, v2}, Lo/setRamUsed;->getSegment(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "documents"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    const-string v2, "Tried to parse an invalid key: %s"

    .line 53
    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 60
    invoke-virtual {p0, v0}, Lo/setRamUsed;->popFirst(I)Lo/setRamUsed;

    move-result-object p0

    check-cast p0, Lo/setJailbroken;

    invoke-static {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->fromPath(Lo/setJailbroken;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static fromPath(Lo/setJailbroken;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;
    .locals 1

    .line 70
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-direct {v0, p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;-><init>(Lo/setJailbroken;)V

    return-object v0
.end method

.method public static fromPathString(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;
    .locals 1

    .line 90
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-static {p0}, Lo/setJailbroken;->fromString(Ljava/lang/String;)Lo/setJailbroken;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;-><init>(Lo/setJailbroken;)V

    return-object v0
.end method

.method public static fromSegments(Ljava/util/List;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;"
        }
    .end annotation

    .line 80
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-static {p0}, Lo/setJailbroken;->fromSegments(Ljava/util/List;)Lo/setJailbroken;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;-><init>(Lo/setJailbroken;)V

    return-object v0
.end method

.method public static isDocumentKey(Lo/setJailbroken;)Z
    .locals 0

    .line 95
    invoke-virtual {p0}, Lo/setRamUsed;->length()I

    move-result p0

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-virtual {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->compareTo(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)I

    move-result p1

    return p1
.end method

.method public final compareTo(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)I
    .locals 1

    .line 118
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->path:Lo/setJailbroken;

    iget-object p1, p1, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->path:Lo/setJailbroken;

    invoke-virtual {v0, p1}, Lo/setRamUsed;->compareTo(Lo/setRamUsed;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 130
    :cond_1
    check-cast p1, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 132
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->path:Lo/setJailbroken;

    iget-object p1, p1, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->path:Lo/setJailbroken;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getPath()Lo/setJailbroken;
    .locals 1

    .line 108
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->path:Lo/setJailbroken;

    return-object v0
.end method

.method public final hasCollectionId(Ljava/lang/String;)Z
    .locals 3

    .line 113
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->path:Lo/setJailbroken;

    invoke-virtual {v0}, Lo/setRamUsed;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->path:Lo/setJailbroken;

    iget-object v0, v0, Lo/setRamUsed;->segments:Ljava/util/List;

    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->path:Lo/setJailbroken;

    invoke-virtual {v2}, Lo/setRamUsed;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 137
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->path:Lo/setJailbroken;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->path:Lo/setJailbroken;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
