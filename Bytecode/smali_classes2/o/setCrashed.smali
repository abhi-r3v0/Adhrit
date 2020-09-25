.class public final Lo/setCrashed;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getNdkPayload;


# instance fields
.field private final asyncEventListener:Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1<",
            "Lo/getDiskSpace;",
            ">;"
        }
    .end annotation
.end field

.field private final client:Lo/getEndedAt;

.field private final queryListener:Lo/getOrganization;


# direct methods
.method public constructor <init>(Lo/getEndedAt;Lo/getOrganization;Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getEndedAt;",
            "Lo/getOrganization;",
            "Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1<",
            "Lo/getDiskSpace;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lo/setCrashed;->client:Lo/getEndedAt;

    .line 35
    iput-object p2, p0, Lo/setCrashed;->queryListener:Lo/getOrganization;

    .line 36
    iput-object p3, p0, Lo/setCrashed;->asyncEventListener:Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;

    return-void
.end method


# virtual methods
.method public final remove()V
    .locals 2

    .line 41
    iget-object v0, p0, Lo/setCrashed;->asyncEventListener:Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$1;->mute()V

    .line 42
    iget-object v0, p0, Lo/setCrashed;->client:Lo/getEndedAt;

    iget-object v1, p0, Lo/setCrashed;->queryListener:Lo/getOrganization;

    invoke-virtual {v0, v1}, Lo/getEndedAt;->stopListening(Lo/getOrganization;)V

    return-void
.end method
