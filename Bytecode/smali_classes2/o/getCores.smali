.class public Lo/getCores;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final limboChanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AutoValue_CrashlyticsReport_Session$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final snapshot:Lo/getDiskSpace;


# direct methods
.method public constructor <init>(Lo/getDiskSpace;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getDiskSpace;",
            "Ljava/util/List<",
            "Lo/AutoValue_CrashlyticsReport_Session$Builder;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lo/getCores;->snapshot:Lo/getDiskSpace;

    .line 26
    iput-object p2, p0, Lo/getCores;->limboChanges:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getLimboChanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/AutoValue_CrashlyticsReport_Session$Builder;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lo/getCores;->limboChanges:Ljava/util/List;

    return-object v0
.end method

.method public getSnapshot()Lo/getDiskSpace;
    .locals 1

    .line 30
    iget-object v0, p0, Lo/getCores;->snapshot:Lo/getDiskSpace;

    return-object v0
.end method
