.class public final Lo/AutoValue_CrashlyticsReport_Session;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final databaseId:Lo/setProximityOn;

.field private final host:Ljava/lang/String;

.field private final persistenceKey:Ljava/lang/String;

.field private final sslEnabled:Z


# direct methods
.method public constructor <init>(Lo/setProximityOn;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session;->databaseId:Lo/setProximityOn;

    .line 39
    iput-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session;->persistenceKey:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lo/AutoValue_CrashlyticsReport_Session;->host:Ljava/lang/String;

    .line 41
    iput-boolean p4, p0, Lo/AutoValue_CrashlyticsReport_Session;->sslEnabled:Z

    return-void
.end method


# virtual methods
.method public final getDatabaseId()Lo/setProximityOn;
    .locals 1

    .line 45
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session;->databaseId:Lo/setProximityOn;

    return-object v0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session;->host:Ljava/lang/String;

    return-object v0
.end method

.method public final getPersistenceKey()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session;->persistenceKey:Ljava/lang/String;

    return-object v0
.end method

.method public final isSslEnabled()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lo/AutoValue_CrashlyticsReport_Session;->sslEnabled:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DatabaseInfo(databaseId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session;->databaseId:Lo/setProximityOn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " host:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
