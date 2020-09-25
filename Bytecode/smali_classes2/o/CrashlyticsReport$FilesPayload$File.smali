.class public final Lo/CrashlyticsReport$FilesPayload$File;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final NONE:Lo/CrashlyticsReport$FilesPayload$File;


# instance fields
.field private final exists:Ljava/lang/Boolean;

.field private final updateTime:Lo/withNdkPayload;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lo/CrashlyticsReport$FilesPayload$File;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lo/CrashlyticsReport$FilesPayload$File;-><init>(Lo/withNdkPayload;Ljava/lang/Boolean;)V

    sput-object v0, Lo/CrashlyticsReport$FilesPayload$File;->NONE:Lo/CrashlyticsReport$FilesPayload$File;

    return-void
.end method

.method private constructor <init>(Lo/withNdkPayload;Ljava/lang/Boolean;)V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Precondition can specify \"exists\" or \"updateTime\" but not both"

    .line 40
    invoke-static {v1, v2, v0}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iput-object p1, p0, Lo/CrashlyticsReport$FilesPayload$File;->updateTime:Lo/withNdkPayload;

    .line 44
    iput-object p2, p0, Lo/CrashlyticsReport$FilesPayload$File;->exists:Ljava/lang/Boolean;

    return-void
.end method

.method public static exists(Z)Lo/CrashlyticsReport$FilesPayload$File;
    .locals 2

    .line 49
    new-instance v0, Lo/CrashlyticsReport$FilesPayload$File;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lo/CrashlyticsReport$FilesPayload$File;-><init>(Lo/withNdkPayload;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static updateTime(Lo/withNdkPayload;)Lo/CrashlyticsReport$FilesPayload$File;
    .locals 2

    .line 54
    new-instance v0, Lo/CrashlyticsReport$FilesPayload$File;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/CrashlyticsReport$FilesPayload$File;-><init>(Lo/withNdkPayload;Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 96
    :cond_1
    check-cast p1, Lo/CrashlyticsReport$FilesPayload$File;

    .line 98
    iget-object v2, p0, Lo/CrashlyticsReport$FilesPayload$File;->updateTime:Lo/withNdkPayload;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lo/CrashlyticsReport$FilesPayload$File;->updateTime:Lo/withNdkPayload;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lo/CrashlyticsReport$FilesPayload$File;->updateTime:Lo/withNdkPayload;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 101
    :cond_3
    iget-object v2, p0, Lo/CrashlyticsReport$FilesPayload$File;->exists:Ljava/lang/Boolean;

    iget-object p1, p1, Lo/CrashlyticsReport$FilesPayload$File;->exists:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    if-nez p1, :cond_5

    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public final getExists()Ljava/lang/Boolean;
    .locals 1

    .line 69
    iget-object v0, p0, Lo/CrashlyticsReport$FilesPayload$File;->exists:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getUpdateTime()Lo/withNdkPayload;
    .locals 1

    .line 64
    iget-object v0, p0, Lo/CrashlyticsReport$FilesPayload$File;->updateTime:Lo/withNdkPayload;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 106
    iget-object v0, p0, Lo/CrashlyticsReport$FilesPayload$File;->updateTime:Lo/withNdkPayload;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 107
    iget-object v2, p0, Lo/CrashlyticsReport$FilesPayload$File;->exists:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final isNone()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lo/CrashlyticsReport$FilesPayload$File;->updateTime:Lo/withNdkPayload;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/CrashlyticsReport$FilesPayload$File;->exists:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isValidFor(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Z
    .locals 3

    .line 77
    iget-object v0, p0, Lo/CrashlyticsReport$FilesPayload$File;->updateTime:Lo/withNdkPayload;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 78
    instance-of v0, p1, Lo/setDiskUsed;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getVersion()Lo/withNdkPayload;

    move-result-object p1

    iget-object v0, p0, Lo/CrashlyticsReport$FilesPayload$File;->updateTime:Lo/withNdkPayload;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v2

    .line 79
    :cond_1
    iget-object v0, p0, Lo/CrashlyticsReport$FilesPayload$File;->exists:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    instance-of p1, p1, Lo/setDiskUsed;

    if-ne v0, p1, :cond_2

    return v1

    :cond_2
    return v2

    .line 82
    :cond_3
    invoke-virtual {p0}, Lo/CrashlyticsReport$FilesPayload$File;->isNone()Z

    move-result p1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Precondition should be empty"

    invoke-static {p1, v2, v0}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 113
    invoke-virtual {p0}, Lo/CrashlyticsReport$FilesPayload$File;->isNone()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Precondition{<none>}"

    return-object v0

    .line 115
    :cond_0
    iget-object v0, p0, Lo/CrashlyticsReport$FilesPayload$File;->updateTime:Lo/withNdkPayload;

    const-string v1, "}"

    if-eqz v0, :cond_1

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Precondition{updateTime="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/CrashlyticsReport$FilesPayload$File;->updateTime:Lo/withNdkPayload;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 117
    :cond_1
    iget-object v0, p0, Lo/CrashlyticsReport$FilesPayload$File;->exists:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Precondition{exists="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/CrashlyticsReport$FilesPayload$File;->exists:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Invalid Precondition"

    .line 120
    invoke-static {v1, v0}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method
