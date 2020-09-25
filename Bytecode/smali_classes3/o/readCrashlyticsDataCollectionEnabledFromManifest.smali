.class public Lo/readCrashlyticsDataCollectionEnabledFromManifest;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final optExclusiveStart:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final optInclusiveEnd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final snap:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lo/readCrashlyticsDataCollectionEnabledFromManifest;->optExclusiveStart:Ljava/util/List;

    .line 26
    iput-object p2, p0, Lo/readCrashlyticsDataCollectionEnabledFromManifest;->optInclusiveEnd:Ljava/util/List;

    .line 27
    iput-object p3, p0, Lo/readCrashlyticsDataCollectionEnabledFromManifest;->snap:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getOptExclusiveStart()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lo/readCrashlyticsDataCollectionEnabledFromManifest;->optExclusiveStart:Ljava/util/List;

    return-object v0
.end method

.method public getOptInclusiveEnd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lo/readCrashlyticsDataCollectionEnabledFromManifest;->optInclusiveEnd:Ljava/util/List;

    return-object v0
.end method

.method public getSnap()Ljava/lang/Object;
    .locals 1

    .line 39
    iget-object v0, p0, Lo/readCrashlyticsDataCollectionEnabledFromManifest;->snap:Ljava/lang/Object;

    return-object v0
.end method
