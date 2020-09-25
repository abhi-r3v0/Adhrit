.class public final Lo/CrashlyticsReport$FilesPayload$Builder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final transformResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/writeRawMessageSetExtension;",
            ">;"
        }
    .end annotation
.end field

.field private final version:Lo/withNdkPayload;


# direct methods
.method public constructor <init>(Lo/withNdkPayload;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/withNdkPayload;",
            "Ljava/util/List<",
            "Lo/writeRawMessageSetExtension;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/withNdkPayload;

    iput-object p1, p0, Lo/CrashlyticsReport$FilesPayload$Builder;->version:Lo/withNdkPayload;

    .line 38
    iput-object p2, p0, Lo/CrashlyticsReport$FilesPayload$Builder;->transformResults:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getTransformResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/writeRawMessageSetExtension;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lo/CrashlyticsReport$FilesPayload$Builder;->transformResults:Ljava/util/List;

    return-object v0
.end method

.method public final getVersion()Lo/withNdkPayload;
    .locals 1

    .line 54
    iget-object v0, p0, Lo/CrashlyticsReport$FilesPayload$Builder;->version:Lo/withNdkPayload;

    return-object v0
.end method
