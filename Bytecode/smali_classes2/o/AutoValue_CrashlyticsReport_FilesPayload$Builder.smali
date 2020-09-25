.class final synthetic Lo/AutoValue_CrashlyticsReport_FilesPayload$Builder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getUserMetadata;


# instance fields
.field private final arg$1:Lo/setFiles;


# direct methods
.method private constructor <init>(Lo/setFiles;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload$Builder;->arg$1:Lo/setFiles;

    return-void
.end method

.method public static lambdaFactory$(Lo/setFiles;)Lo/getUserMetadata;
    .locals 1

    new-instance v0, Lo/AutoValue_CrashlyticsReport_FilesPayload$Builder;

    invoke-direct {v0, p0}, Lo/AutoValue_CrashlyticsReport_FilesPayload$Builder;-><init>(Lo/setFiles;)V

    return-object v0
.end method


# virtual methods
.method public final onIdTokenChanged(Lo/joinMapsEntries;)V
    .locals 1

    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload$Builder;->arg$1:Lo/setFiles;

    invoke-static {v0, p1}, Lo/setFiles;->lambda$new$0(Lo/setFiles;Lo/joinMapsEntries;)V

    return-void
.end method
