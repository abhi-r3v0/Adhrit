.class public final Lo/AutoValue_CrashlyticsReport_FilesPayload$1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final UNAUTHENTICATED:Lo/AutoValue_CrashlyticsReport_FilesPayload$1;


# instance fields
.field private final uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lo/AutoValue_CrashlyticsReport_FilesPayload$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/AutoValue_CrashlyticsReport_FilesPayload$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/AutoValue_CrashlyticsReport_FilesPayload$1;->UNAUTHENTICATED:Lo/AutoValue_CrashlyticsReport_FilesPayload$1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload$1;->uid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 53
    :cond_1
    check-cast p1, Lo/AutoValue_CrashlyticsReport_FilesPayload$1;

    .line 54
    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload$1;->uid:Ljava/lang/String;

    iget-object p1, p1, Lo/AutoValue_CrashlyticsReport_FilesPayload$1;->uid:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-nez p1, :cond_3

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload$1;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 59
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload$1;->uid:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isAuthenticated()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload$1;->uid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "User(uid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload$1;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
